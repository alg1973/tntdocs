#include <iostream>
#include <ctime.h>
#include <array>

class last_stat {
	last_stat(): counters{} {
		last_set_time = std::time(nullptr);
	}
	std::time_t clear_counters() {
		std::time_t cur = std::time(nullptr);
		int ptr = cur % 3601;
		if ( last_set_time != cur ) {
			int diff = (cur - last_set_time)>3601?3601:cur-last_set_time;
			if (diff <= ptr)
				std::fill(counters.begin(), counters.begin()+diff, 0);
			else {
				std::fill(counters.begin(), counters.begin()+ptr+1, 0);
				std::fill(ptr + (diff-ptr), counters.end(),0);
			}
		}
		return cur;
	}

	void gen_count() {
		std::time_t cur = clear_counters();
		counters[cur % 3601] +=1;
	}

	std::tuple<int,int,int> get_last_stat() {
		std::time_t cur = clear_counters();
		cur--;
		int sec=0;
		int min=0;
		int hour=0;
		for(int i = 0; i<3601; ++i) {
			if (i == 0)
				sec = counters[(cur-i) % 3601];
			else if (i<60)
				min = counters[(cur-i) % 3601];
			else
				hour = counters[(cur-i) % 3601];
		}
		return std::make_tuple(sec, sec+min, sec+min+hour);
	}
private:
	std::time_t last_set_time;
	int ptr;
	std::array<int,3601> counters;
};
