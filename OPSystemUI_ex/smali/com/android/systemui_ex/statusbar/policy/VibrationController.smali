.class public Lcom/android/systemui_ex/statusbar/policy/VibrationController;
.super Ljava/lang/Object;
.source "VibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;,
        Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final URI_OEM_VIBRATE_UNDER_SILENT:Ljava/lang/String;

.field private final URI_OEM_VIBRATE_WHEN_INCALL:Ljava/lang/String;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibrationState:Z

.field private final mVibrationObserver:Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

.field private final mVolmeStateCallbacks:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;

.field private final mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "VibrationController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCallbacks:Ljava/util/ArrayList;

    .line 38
    const-string v0, "oem_vibrate_under_silent"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->URI_OEM_VIBRATE_UNDER_SILENT:Ljava/lang/String;

    .line 39
    const-string v0, "oem_vibrate_when_incall"

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->URI_OEM_VIBRATE_WHEN_INCALL:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCurrentVibrationState:Z

    .line 112
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolmeStateCallbacks:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;

    .line 44
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolmeStateCallbacks:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;->addCallback(Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;)V

    .line 49
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;-><init>(Lcom/android/systemui_ex/statusbar/policy/VibrationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVibrationObserver:Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

    .line 50
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVibrationObserver:Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->register()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->fireVibrationStateChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVolumeStateController:Lcom/android/systemui_ex/statusbar/policy/VolumeStateController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/policy/VibrationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCurrentVibrationState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/policy/VibrationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->handleThreeKeyStateChange()V

    return-void
.end method

.method private fireVibrationStateChange()V
    .locals 3

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;

    .line 130
    .local v0, "cb":Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;
    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;->onVibrationStateChanged()V

    goto :goto_0

    .line 132
    .end local v0    # "cb":Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;
    :cond_0
    return-void
.end method

.method private handleThreeKeyStateChange()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->getVibration()Z

    move-result v0

    .line 122
    .local v0, "vibration":Z
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCurrentVibrationState:Z

    if-eq v1, v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->fireVibrationStateChange()V

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCurrentVibrationState:Z

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/statusbar/policy/VibrationController$Callback;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getVibration()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVibrationObserver:Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibration(Z)V
    .locals 1
    .param p1, "vibration"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/VibrationController;->mVibrationObserver:Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/VibrationController$VibrationObserver;->setValue(Z)V

    .line 67
    return-void
.end method
