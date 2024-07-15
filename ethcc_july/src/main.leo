// The 'ethcc_july' program.
program ethcc_july.aleo {
    // transition main(public a: u32, b: u32) -> u32 {
    //     let c: u32 = a + b;
    //     return c;
    // }

    record Token {
        owner: address,
        balance: u64,
    }

    transition mint(owner: address, amount: u64) -> Token {
            return Token {
                owner: owner,
                balance: amount,
            };
    }

     transition transfer(token: Token, to: address, amount: u64) -> (Token, Token) {
        
        let difference: u64 = token.balance - amount;

       
        let remaining: Token = Token {
            owner: token.owner,
            balance: difference,
        };

    
        let transferred: Token = Token {
            owner: to,
            balance: amount,
        };

        return (remaining, transferred);
    }
}
