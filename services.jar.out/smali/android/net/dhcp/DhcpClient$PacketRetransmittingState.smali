.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1

    .prologue
    .line 695
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 702
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 703
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    .line 704
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    .line 705
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 706
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 729
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 730
    return-void
.end method

.method protected initTimer()V
    .locals 1

    .prologue
    .line 737
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 738
    return-void
.end method

.method protected jitterTimer(I)I
    .locals 4
    .param p1, "baseTimer"    # I

    .prologue
    .line 741
    div-int/lit8 v1, p1, 0xa

    .line 742
    .local v1, "maxJitter":I
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2300(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 743
    .local v0, "jitter":I
    add-int v2, p1, v0

    return v2
.end method

.method protected maybeInitTimeout()V
    .locals 6

    .prologue
    .line 759
    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    if-lez v2, :cond_0

    .line 760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 761
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 764
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 710
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 711
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 723
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 713
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    .line 714
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    move v0, v1

    .line 715
    goto :goto_0

    .line 717
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    move v0, v1

    .line 718
    goto :goto_0

    .line 720
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    move v0, v1

    .line 721
    goto :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x30065
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .locals 10

    .prologue
    const v9, 0x1f400

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 748
    .local v2, "now":J
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    invoke-virtual {p0, v6}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    move-result v6

    int-to-long v4, v6

    .line 749
    .local v4, "timeout":J
    add-long v0, v2, v4

    .line 750
    .local v0, "alarmTime":J
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 751
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/dhcp/DhcpClient;->access$2000(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v1, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 752
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 753
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    if-le v6, v9, :cond_0

    .line 754
    iput v9, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 756
    :cond_0
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .locals 0

    .prologue
    .line 734
    return-void
.end method
