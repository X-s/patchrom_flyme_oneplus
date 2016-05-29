.class Lcom/android/settings_ex/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$PackageReceiver;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/DreamSettings;Lcom/android/settings_ex/DreamSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/DreamSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/DreamSettings$1;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings_ex/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lcom/android/settings_ex/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DreamSettings;->access$200(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/DreamSettings$PackageReceiver;->this$0:Lcom/android/settings_ex/DreamSettings;

    # invokes: Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settings_ex/DreamSettings;->access$400(Lcom/android/settings_ex/DreamSettings;)V

    .line 369
    return-void
.end method
