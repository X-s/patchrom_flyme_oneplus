.class final Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;
.super Ljava/lang/Object;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService$OemUEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/OemExService$OemUEventObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService$OemUEventObserver;Ljava/lang/String;)V
    .locals 0
    .param p2, "devName"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->this$1:Lcom/android/server/OemExService$OemUEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 449
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 456
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/devices/virtual/switch/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 460
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/sys/class/switch/%s/state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/OemExService$OemUEventObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
