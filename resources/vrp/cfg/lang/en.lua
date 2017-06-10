
-- define all language properties

local lang = {
  common = {
    welcome = "Welcome to HighrolersRP! Use the HOME Button to access the Menu!",
    no_player_near = "~r~No one is near you.",
    invalid_value = "~r~Invalid value.",
    invalid_name = "~r~Invalid name.",
    not_found = "~r~Not found.",
    request_refused = "~r~Request refused."
  },
  survival = {
    starving = "STARVING",
    thirsty = "THIRSTY"
  },
  money = {
    display = "{1} <span class=\"symbol\">$</span>",
    given = "Given ~r~{1}$.",
    received = "Received ~g~{1}$.",
    not_enough = "~r~Not enough money.",
    paid = "Paid ~r~{1}$.",
    give = {
      title = "Give money",
      description = "Give money to the nearest person.",
      prompt = "Amount to give:"
    }
  },
  inventory = {
    title = "Inventory",
    description = "Open Inventory.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} lbs</em>",
    info_weight = "Weight : {1}/{2} lbs",
    give = {
      title = "Give",
      description = "Give items to the nearest person.",
      prompt = "Amount to give (You have : {1}):",
      given = "Given ~r~{1} ~s~{2}.",
      received = "Received ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Trash",
      description = "Destroy items.",
      prompt = "Amount to trash (You have : {1}):",
      done = "Trashed ~r~{1} ~s~{2}."
    },
    missing = "~r~Missing {2} {1}.",
    full = "~r~Inventory full.",
    chest = {
      title = "Chest",
      already_opened = "~r~This chest is already opened by someone else.",
      full = "~r~Chest full.",
      take = {
        title = "Take",
        prompt = "Amount to take (Has : {1}):"
      },
      put = {
        title = "Put",
        prompt = "Amount to put (You have : {1}):"
      }
    }
  },
  atm = {
    title = "ATM",
    info = {
      title = "Info",
      bank = "bank: {1} $"
    },
    deposit = {
      title = "Deposit",
      description = "From Wallet to Bank",
      prompt = "Enter amount of money to deposit:",
      deposited = "~r~{1}$~s~ deposited."
    },
    withdraw = {
      title = "Withdraw",
      description = "From Bank to Wallet",
      prompt = "Enter amount of money to withdraw:",
      withdrawn = "~s~You withdrew ~g~${1}",
      not_enough = "~r~You don't have enough money in bank."
    }
  },
  business = {
    title = "Chamber of Commerce",
    directory = {
      title = "Directory",
      description = "Business directory.",
      dprev = "> Prev",
      dnext = "> Next",
      info = "<em>capital: </em>{1} $<br /><em>owner: </em>{2} {3}<br /><em>registration n°: </em>{4}<br /><em>phone: </em>{5}"
    },
    info = {
      title = "Business info",
      info = "<em>name: </em>{1}<br /><em>capital: </em>{2} $<br /><em>capital transfer: </em>{3} $<br /><br/>Capital transfer is the amount of money transfered for a business economic period, the maximum is the business capital."
    },
    addcapital = {
      title = "Add capital",
      description = "Add capital to your business.",
      prompt = "Amount to add to the business capital:",
      added = "~r~{1}$ ~s~added to the business capital."
    },
    launder = {
      title = "Money laundering",
      description = "Use your business to launder dirty money.",
      prompt = "Amount of dirty money to launder (max {1} $): ",
      laundered = "~g~{1}$ ~s~laundered.",
      not_enough = "~r~Not enough dirty money."
    },
    open = {
      title = "Open Business",
      description = "Open your business, minimum capital is {1} $.",
      prompt_name = "Business name (can't change after, max {1} chars):",
      prompt_capital = "Initial capital (min {1})",
      created = "~g~Business created."
      
    }
  },
  cityhall = {
    title = "City Hall",
    identity = {
      title = "New Identity",
      description = "Create a new identity for {1} $.",
      prompt_firstname = "Enter your First Name:",
      prompt_name = "Enter your Last Name:",
      prompt_age = "Enter your age:",
    },
    menu = {
      title = "Identity",
      info = "<em>Name: </em>{1}<br /><em>First name: </em>{2}<br /><em>Age: </em>{3}<br /><em>Registration n°: </em>{4}<br /><em>Phone: </em>{5}<br /><em>Address: </em>{7}, {6}"
    }
  },
  police = {
    wanted = "Wanted rank {1}",
    cloakroom = {
      title = "Cloakroom",
      uniform = {
        title = "Uniform",
        description = "Put uniform."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Registration search",
        description = "Search identity by registration.",
        prompt = "Enter registration number:"
      },
      closebusiness = {
        title = "Close business",
        description = "Close business of the nearest person.",
        request = "Are you sure you want to close the business, {3}, owned by {1} {2} ?",
        closed = "~g~Business closed."
      },
      trackveh = {
        title = "Track vehicle",
        description = "Track a vehicle by its registration number.",
        prompt_reg = "Enter registration number:",
        prompt_note = "Enter a tracking note/reason:",
        tracking = "~b~Tracking started.",
        track_failed = "~b~Tracking of {1}~s~ ({2}) ~n~~r~Failed.",
        tracked = "Tracked {1} ({2})"
      }
    },
    menu = {
      handcuff = {
        title = "Handcuff",
        description = "Handcuff/unhandcuff nearest person."
      },
      drag = {
        title = "Drag",
        description = "-COMING SOON-" --"Drag the nearest person to you."
      },
      putinveh = {
        title = "Put in vehicle",
        description = "Put the nearest person in the nearest vehicle, as passenger."
      },
      askid = {
        title = "Ask for ID",
        description = "Ask for ID from the nearest person.",
        request = "Do you want to show your ID? ?",
        request_hide = "Hide the ID Info.",
        asked = "Asking for ID..."
      },
      check = {
        title = "Search Person",
        description = "Search for money, items and weapons of the nearest person.",
        request_hide = "Hide the search report.",
        info = "<em>money: </em>{1} $<br /><br /><em>items: </em>{2}<br /><br /><em>weapons: </em>{3}",
        checked = "You have been searched."
      },
      seize = {
        seized = "Seized {2} ~r~{1}",
        weapons = {
          title = "Seize weapons",
          description = "Seize nearest persons weapons",
          seized = "~b~Your weapons have been seized."
        },
        items = {
          title = "Seize Illegal Items",
          description = "Seize illegal items",
          seized = "~b~Your illegal items have been seized."
        }
      },
      jail = {
        title = "Jail",
        description = "Jail/UnJail nearest Person.",
        not_found = "~r~No jail found.",
        jailed = "~b~Jailed.",
        unjailed = "~b~Unjailed.",
        notify_jailed = "~b~You have been jailed.",
        notify_unjailed = "~b~You have been unjailed."
      },
      fine = {
        title = "Fine",
        description = "Fine the nearest person.",
        fined = "~b~Fined ~s~{2} $ for ~b~{1}.",
        notify_fined = "~b~You have been fined ~s~ {2} $ for ~b~{1}."
      }
    },
    identity = {
      info = "<em>Name: </em>{1}<br /><em>First name: </em>{2}<br /><em>Age: </em>{3}<br /><em>Registration : </em>{4}<br /><em>Phone: </em>{5}<br /><em>Business: </em>{6}<br /><em>Business capital: </em>{7} $<br /><em>Address: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Revive",
        description = "Revive the nearest person.",
        not_in_coma = "~r~Not in coma."
      }
    }
  },
  phone = {
    title = "Phone",
    directory = {
      title = "Directory",
      description = "Open the phone directory.",
      add = {
        title = "> Add",
        prompt_number = "Enter the phone number to add [Format : XXX-XXXX]:",
        prompt_name = "Enter Name:",
        added = "~g~Entry added."
      },
      sendsms = {
        title = "Send SMS",
        prompt = "Enter the message (max {1} chars):",
        sent = "~g~ Sent to {1}.",
        not_sent = "~r~ {1} unavailable."
      },
      sendpos = {
        title = "Send position",
      },
      remove = {
        title = "Remove"
      }
    },
    sms = {
      title = "SMS History",
      description = "Received SMS history.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-Position ~b~ {1}"
    },
    service = {
      title = "Services",
      description = "Call a service or an emergency number.",
      prompt = "If needed, enter a message for the service:",
      ask_call = "Received {1} call, responding ? <em>{2}</em>",
      taken = "~r~This call is already taken."
    }
  },
  emotes = {
    title = "Emotes",
    clear = {
      title = "> Clear",
      description = "Clear all running emotes."
    }
  },
  home = {
    buy = {
      title = "Buy",
      description = "Buy a home here, price is {1} $.",
      bought = "~g~Bought.",
      full = "~r~The place is full.",
      have_home = "~r~You already have a home."
    },
    sell = {
      title = "Sell",
      description = "Sell your home for {1} $",
      sold = "~g~Sold.",
      no_home = "~r~You don't have a home here."
    },
    intercom = {
      title = "Buzzer",
      description = "Use the Buzzer to enter a home.",
      prompt = "Number:",
      not_available = "~r~Not available.",
      refused = "~r~Refused to enter.",
      prompt_who = "Ask who it is:",
      asked = "Asking...",
      request = "Someone is knocking on your door: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Leave"
      },
      ejectall = {
        title = "Eject all",
        description = "Eject all home visitors, including you, and close the home."
      }
    }
  },
  garage = {
    title = "Garage ({1})",
    owned = {
      title = "Owned",
      description = "Owned vehicles."
    },
    buy = {
      title = "Buy",
      description = "Buy vehicles.",
      info = "{1} $<br /><br />{2}"
    },
    store = {
      title = "Store",
      description = "Put your current vehicle in the garage."
    }
  },
  vehicle = {
    title = "Vehicle",
    no_owned_near = "~r~No owned vehicle near.",
    trunk = {
      title = "Trunk",
      description = "Open the vehicle trunk."
    },
    detach_trailer = {
      title = "Detach trailer",
      description = "Detach trailer."
    },
     asktrunk = {
      title = "Ask to open Trunk",
      asked = "~g~Asking...",
      request = "Do you want to open the trunk?"
    }
  },
  gunshop = {
    title = "Gunshop ({1})",
    prompt_ammo = "Amount of ammo to buy for the {1}:",
    info = "<em>body: </em> {1} $<br /><em>ammo: </em> {2} $/u<br /><br />{3}"
  },
  market = {
    title = "Market ({1})",
    prompt = "Amount of {1} to buy:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "Skinshop"
  },
    cloakroom = {
    title = "Cloakroom ({1})",
    undress = {
      title = "> Undress"
    }
  },
  itemtr = {
    informer = {
      title = "Illegal Informer",
      description = "{1} $",
      bought = "~g~Position sent to your GPS."
    }
  },
  items = {
    dirty_money = {
      title = "Dirty money",
      description = "Illegally earned money."
    },
    medkit = {
      title = "Medical Kit",
      description = "Used to revive unconscious people."
    }
  }
}

return lang
