.class Lcom/android/settings_ex/DevelopmentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DevelopmentSettings;

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    const-string/jumbo v1, "unlocked"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->-set0(Lcom/android/settings_ex/DevelopmentSettings;Z)Z

    .line 2471
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->-wrap2(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 2467
    return-void
.end method
