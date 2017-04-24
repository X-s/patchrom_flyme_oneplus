.class public Lcom/oneplus/threekey/ThreeKeyHw;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;,
        Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;,
        Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyHw"

.field private static ThreeKeyModeState:I = 0x0

.field private static final UDEV_NAME_THREEKEY:Ljava/lang/String; = "tri-state-key"

.field private static final debug:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

.field private mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/threekey/ThreeKeyHw;->ThreeKeyModeState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    const-string v1, "tri-state-key"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    .line 26
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    .line 30
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/threekey/ThreeKeyHw;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/threekey/ThreeKeyHw;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyHw;->sendBroadcastForZenModeChanged(I)V

    return-void
.end method

.method private sendBroadcastForZenModeChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intentZenMode":Landroid/content/Intent;
    const-string v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportThreeKey()Z

    move-result v5

    if-nez v5, :cond_0

    .line 35
    new-instance v5, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v5}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v5

    .line 38
    :cond_0
    const/4 v4, -0x1

    .line 40
    .local v4, "threeKeyState":I
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [C

    .line 41
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v5}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 43
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 44
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 52
    return v4

    .line 45
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ThreeKeyHw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v7}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "not found while attempting to get switch state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v5, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v5}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v5
.end method

.method public init()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startMonitor()V

    .line 61
    return-void
.end method

.method public isSupportThreeKey()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    new-array v2, v0, [I

    const/16 v3, 0xa

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
