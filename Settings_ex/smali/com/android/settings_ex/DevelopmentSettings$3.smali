.class Lcom/android/settings_ex/DevelopmentSettings$3;
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

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$3;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->updateUsbConfigurationValues()V
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)V

    .line 1935
    return-void
.end method
