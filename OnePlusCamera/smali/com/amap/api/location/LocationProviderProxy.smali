.class public Lcom/amap/api/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"


# static fields
.field public static final AMapNetwork:Ljava/lang/String; = "lbs"

.field public static final AVAILABLE:I = 0x2

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    .line 19
    iput-object p2, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private a()Landroid/location/LocationProvider;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-object v2

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/LocationProviderProxy;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/amap/api/location/LocationProviderProxy;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/amap/api/location/LocationProviderProxy;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/LocationProviderProxy;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 41
    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, -0x1

    .line 50
    return v0

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 41
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 42
    return v0

    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 56
    if-nez v0, :cond_1

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, "null"

    .line 65
    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "lbs"

    .line 56
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "lbs"

    .line 57
    return-object v0

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPowerRequirement()I
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 71
    if-nez v0, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    const/4 v0, -0x1

    .line 81
    return v0

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 71
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 72
    return v0

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getPowerRequirement()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public hasMonetaryCost()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 87
    if-nez v0, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 87
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return v2

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->hasMonetaryCost()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "lbs"

    .line 102
    if-nez v2, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_6

    .line 116
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "lbs"

    .line 102
    iget-object v3, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    return v0

    .line 104
    :cond_4
    return v0

    .line 106
    :cond_5
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    if-ne v2, v0, :cond_3

    goto :goto_1

    .line 111
    :cond_6
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requiresCell()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 122
    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 131
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 122
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return v2

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresCell()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requiresNetwork()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 137
    if-nez v0, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 146
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 137
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return v2

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresNetwork()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requiresSatellite()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 152
    if-nez v0, :cond_1

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 161
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 152
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    return v2

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresNetwork()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 167
    if-nez v0, :cond_1

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 176
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 167
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return v2

    .line 171
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsAltitude()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public supportsBearing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 182
    if-nez v0, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 191
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 182
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return v2

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsBearing()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public supportsSpeed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "lbs"

    .line 197
    if-nez v0, :cond_1

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 206
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "lbs"

    .line 197
    iget-object v1, p0, Lcom/amap/api/location/LocationProviderProxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return v2

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/location/LocationProviderProxy;->a()Landroid/location/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationProvider;->supportsSpeed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
