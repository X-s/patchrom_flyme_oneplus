.class Landroid/location/LocationManager$GnssStatusListenerTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;,
        Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGnssCallback:Landroid/location/GnssStatus$Callback;

.field private final mGnssHandler:Landroid/os/Handler;

.field private final mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private final mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldGnssCallback:Landroid/location/GnssStatusCallback;

.field private final mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    return-object v0
.end method

.method static synthetic -get6(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssNmeaListener;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    return-object v0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GnssNmeaListener;

    .prologue
    .line 1622
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V

    .line 1621
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GnssNmeaListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1625
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1626
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1627
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1628
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1629
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1630
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$4;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$4;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :goto_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1636
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1637
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1625
    return-void

    :cond_0
    move-object v0, v1

    .line 1635
    goto :goto_0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;

    .prologue
    .line 1607
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    .line 1606
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1610
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1611
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1612
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1613
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1614
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1615
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1616
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1617
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1618
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1610
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatusCallback;

    .prologue
    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V

    .line 1571
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatusCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1575
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1576
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1577
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$3;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :goto_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1598
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1599
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1600
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1601
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1602
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1603
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1575
    return-void

    :cond_0
    move-object v0, v1

    .line 1597
    goto :goto_0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;

    .prologue
    .line 1517
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V

    .line 1516
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1520
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1521
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1522
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1523
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1524
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1525
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1526
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :goto_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1547
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1548
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1520
    return-void

    :cond_0
    move-object v0, v1

    .line 1546
    goto :goto_0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    .prologue
    .line 1552
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V

    .line 1551
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1555
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1556
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1557
    new-instance v1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1558
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1560
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1561
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1562
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1563
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$2;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :cond_0
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1555
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;

    .prologue
    .line 1642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    .line 1641
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 1645
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    .line 1646
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    .line 1647
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    .line 1648
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    .line 1649
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    .line 1650
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 1651
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 1652
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1645
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    .prologue
    .line 1676
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_0

    .line 1677
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1, p1}, Landroid/location/LocationManager;->-set1(Landroid/location/LocationManager;I)I

    .line 1678
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1679
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1680
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1675
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStarted()V
    .locals 2

    .prologue
    .line 1658
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_0

    .line 1659
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1660
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1661
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1657
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStopped()V
    .locals 2

    .prologue
    .line 1667
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_0

    .line 1668
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1669
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1670
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1666
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3e8

    .line 1700
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    if-eqz v1, :cond_0

    .line 1701
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1702
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1704
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1705
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1707
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1708
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1699
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1701
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .prologue
    const/4 v8, 0x4

    .line 1687
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v7, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    new-instance v0, Landroid/location/GnssStatus;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F)V

    invoke-static {v7, v0}, Landroid/location/LocationManager;->-set0(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    .line 1690
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 1691
    .local v6, "msg":Landroid/os/Message;
    iput v8, v6, Landroid/os/Message;->what:I

    .line 1693
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1694
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1686
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
