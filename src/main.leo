// The 'hello1' program.
program hello1.aleo {
       struct foo {
        a: u8,
        b: scalar
    }


    transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        let e:u8 = 2u8;

        let f:u16 = e as u16;  //type casting
        let d:bool = false;

        // field element
        let h: field = 0field;
let g: field = 8444461749428370424248824938781546531375899335154063827935233455917409239040field;

        return c;
    }

        transition verify_field(s: signature, a: address, v: field) {
        let first: bool = signature::verify(s, a, v);
        let second: bool = s.verify(a, v);
        assert_eq(first, second);
    }

    transition verify_foo(s: signature, a: address, v: foo) {
        let first: bool = signature::verify(s, a, v);
        let second: bool = s.verify(a, v);
        assert_eq(first, second);
    }
}
