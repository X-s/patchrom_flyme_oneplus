.class Lcom/aps/a$1;
.super Landroid/telephony/PhoneStateListener;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aps/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aps/a;


# direct methods
.method constructor <init>(Lcom/aps/a;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    .prologue
    .line 818
    if-nez p1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->a(Lcom/aps/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v0, p1}, Lcom/aps/a;->a(Lcom/aps/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    .line 851
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/a;->a(Lcom/aps/a;J)J

    .line 852
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/a;->b(Lcom/aps/a;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .prologue
    .line 916
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 917
    packed-switch v0, :pswitch_data_0

    .line 931
    :goto_0
    return-void

    .line 919
    :pswitch_0
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v0}, Lcom/aps/a;->c(Lcom/aps/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 920
    iget-object v0, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    const/16 v1, -0x71

    invoke-static {v0, v1}, Lcom/aps/a;->b(Lcom/aps/a;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 917
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 2

    .prologue
    .line 867
    const/16 v0, -0x71

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v1}, Lcom/aps/a;->b(Lcom/aps/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 878
    :goto_0
    iget-object v1, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v1, v0}, Lcom/aps/a;->a(Lcom/aps/a;I)V

    .line 885
    :goto_1
    return-void

    .line 870
    :pswitch_0
    invoke-static {p1}, Lcom/aps/t;->a(I)I

    move-result v0

    goto :goto_0

    .line 873
    :pswitch_1
    invoke-static {p1}, Lcom/aps/t;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 893
    const/16 v0, -0x71

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v1}, Lcom/aps/a;->b(Lcom/aps/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 904
    :goto_0
    iget-object v1, p0, Lcom/aps/a$1;->a:Lcom/aps/a;

    invoke-static {v1, v0}, Lcom/aps/a;->a(Lcom/aps/a;I)V

    .line 911
    :goto_1
    return-void

    .line 896
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/aps/t;->a(I)I

    move-result v0

    goto :goto_0

    .line 899
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
