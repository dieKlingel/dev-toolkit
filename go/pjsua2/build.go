package pjsua2

//go:generate swig -c++ -go -cgo -intgosize 64 -outcurrentdir -I../../3rdparty/pjproject/pjsip/include -I../../3rdparty/pjproject/pjlib/include ../../3rdparty/pjproject/pjsip-apps/src/swig/pjsua2.i

// #cgo pkg-config: --static libpjproject
import "C"
