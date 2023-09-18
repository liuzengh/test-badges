// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package errorz_test

import (
	"testing"

	"github.com/liuzengh/test-badges/errorz"
)

func TestNewEqual(t *testing.T) {
	// Different allocations should not be equal.
	if errorz.New("abc") == errorz.New("abc") {
		t.Errorf(`New("abc") == New("abc")`)
	}
	if errorz.New("abc") == errorz.New("xyz") {
		t.Errorf(`New("abc") == New("xyz")`)
	}

	// Same allocation should be equal to itself (not crash).
	err := errorz.New("jkl")
	if err != err {
		t.Errorf(`err != err`)
	}
}

func TestErrorMethod(t *testing.T) {
	err := errorz.New("abc")
	if err.Error() != "abc" {
		t.Errorf(`New("abc").Error() = %q, want %q`, err.Error(), "abc")
	}
}
