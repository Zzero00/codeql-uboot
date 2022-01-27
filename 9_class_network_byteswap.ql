import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap () {
      // TODO: replace <class> and <var>
      exists(MacroInvocation mi |
        // TODO: <condition>
        mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)") and
        mi.getExpr() = this
      )
    }
  }
  
  from NetworkByteSwap n
  select n, "Network byte swap"