# Makefile for metroSimHelper
# Created by: Matt Champlin
# Tufts University 2019

CXX = clang++
CXXFLAGS = -Wall -Wextra -std=c++14


metroSimHelper: metroSimHelper.cpp
	${CXX} ${CXXFLAGS} -o $@ $<


clean:
	rm -r metroSimHelper