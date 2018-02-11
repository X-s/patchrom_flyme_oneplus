.class final Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final mTetherSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/TetherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 1050
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    .line 1049
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TetherSettings;

    .line 1065
    .local v0, "settings":Lcom/android/settings_ex/TetherSettings;
    if-eqz v0, :cond_0

    .line 1066
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->-wrap4(Lcom/android/settings_ex/TetherSettings;)V

    .line 1063
    :cond_0
    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;->update()V

    .line 1059
    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;->update()V

    .line 1054
    return-void
.end method
