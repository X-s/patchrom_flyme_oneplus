.class final Lcom/aps/am;
.super Landroid/telephony/PhoneStateListener;
.source "Unknown"


# instance fields
.field private synthetic a:Lcom/aps/ak;


# direct methods
.method private constructor <init>(Lcom/aps/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/ak;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aps/am;-><init>(Lcom/aps/ak;)V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/aps/ak;->b(Lcom/aps/ak;J)J

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {v0, p1}, Lcom/aps/ak;->a(Lcom/aps/ak;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aps/ak;->a(Lcom/aps/ak;Z)Z

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aps/ak;->a(Lcom/aps/ak;Z)Z

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {v0}, Lcom/aps/ak;->f(Lcom/aps/ak;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/aps/ak;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/aps/ak;->a(Lcom/aps/ak;I)I

    iget-object v1, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/aps/ak;->b(Lcom/aps/ak;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {v0}, Lcom/aps/ak;->g(Lcom/aps/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/ak;->c(Lcom/aps/ak;I)I

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {v0}, Lcom/aps/ak;->h(Lcom/aps/ak;)I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    iget-object v1, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-static {v1}, Lcom/aps/ak;->h(Lcom/aps/ak;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    invoke-static {v0, v1}, Lcom/aps/ak;->c(Lcom/aps/ak;I)I

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aps/ak;->c(Lcom/aps/ak;I)I

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/am;->a:Lcom/aps/ak;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/aps/ak;->c(Lcom/aps/ak;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
