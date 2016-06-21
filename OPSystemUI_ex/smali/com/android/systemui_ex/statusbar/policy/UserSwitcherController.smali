.class public Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;,
        Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;,
        Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;,
        Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    }
.end annotation


# instance fields
.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddUserDialog:Landroid/app/Dialog;

.field private mAddUsersWhenLocked:Z

.field private final mCallback:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;

.field private final mContext:Landroid/content/Context;

.field private mExitGuestDialog:Landroid/app/Dialog;

.field private final mGuestResumeSessionReceiver:Lcom/android/systemui_ex/GuestResumeSessionReceiver;

.field private final mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

.field private mLastNonGuestUser:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimpleUserSwitcher:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final userDetailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardMonitor"    # Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/android/systemui_ex/GuestResumeSessionReceiver;

    invoke-direct {v0}, Lcom/android/systemui_ex/GuestResumeSessionReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui_ex/GuestResumeSessionReceiver;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    .line 77
    iput v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    .line 292
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$3;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 478
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$4;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui_ex/qs/QSTile$DetailAdapter;

    .line 514
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$5;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;

    .line 82
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui_ex/GuestResumeSessionReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/GuestResumeSessionReceiver;->register(Landroid/content/Context;)V

    .line 84
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    .line 85
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 86
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreenSimpleUserSwitcher"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "add_users_when_locked"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;->addCallback(Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 107
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mKeyguardMonitor:Lcom/android/systemui_ex/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->exitGuest(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->notifyAdapters()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method private exitGuest(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "newId":I
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 284
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 288
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 289
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 290
    return-void
.end method

.method public static isUserSwitcherAvailable(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "um"    # Landroid/os/UserManager;

    .prologue
    .line 588
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAdapters()V
    .locals 3

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    .line 215
    .local v0, "adapter":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;->notifyDataSetChanged()V

    .line 213
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v0    # "adapter":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    :cond_1
    return-void
.end method

.method private refreshUsers(I)V
    .locals 8
    .param p1, "forcePictureLoadForId"    # I

    .prologue
    .line 120
    new-instance v2, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 121
    .local v2, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 123
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .line 124
    .local v4, "r":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p1, :cond_0

    iget-object v5, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v5, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 131
    .end local v4    # "r":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    .line 132
    .local v1, "addUsersWhenLocked":Z
    new-instance v5, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$1;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Z)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/util/SparseArray;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    return-void
.end method

.method private showAddUserDialog()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 276
    :cond_0
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$AddUserDialog;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    .line 277
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 278
    return-void
.end method

.method private showExitGuestDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 268
    :cond_0
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$ExitGuestDialog;-><init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    .line 269
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 270
    return-void
.end method

.method private switchToUserId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserSwitcherController"

    const-string v2, "Couldn\'t switch user."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 345
    const-string v2, "UserSwitcherController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastNonGuestUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    const-string v2, "  mUsers.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .line 350
    .local v1, "u":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "u":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_0
    return-void
.end method

.method public getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object v1

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .line 357
    .local v0, "item":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v2, :cond_0

    .line 358
    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0c0156

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 359
    :cond_2
    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSimpleUserSwitcher()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return v0
.end method

.method public switchTo(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 6
    .param p1, "record"    # Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 229
    iget-boolean v2, p1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0156

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 233
    .local v0, "guest":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 254
    .end local v0    # "guest":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v0    # "guest":Landroid/content/pm/UserInfo;
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 246
    .end local v0    # "guest":Landroid/content/pm/UserInfo;
    .local v1, "id":I
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 247
    iget-boolean v2, p1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v2, :cond_0

    .line 248
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    goto :goto_0

    .line 239
    .end local v1    # "id":I
    :cond_2
    iget-boolean v2, p1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v2, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->showAddUserDialog()V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v2, p1, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .restart local v1    # "id":I
    goto :goto_1

    .line 253
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    goto :goto_0
.end method
