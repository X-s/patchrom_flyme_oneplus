.class Lcom/android/settings_ex/WirelessSettings$2$1;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/WirelessSettings$2;->updateWFCMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/WirelessSettings$2;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/WirelessSettings$2;
    .param p2, "val$s"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$2$1;->this$1:Lcom/android/settings_ex/WirelessSettings$2;

    iput-object p2, p0, Lcom/android/settings_ex/WirelessSettings$2$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "WirelessSettings"

    const-string/jumbo v1, "new UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2$1;->this$1:Lcom/android/settings_ex/WirelessSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/WirelessSettings;->-get0(Lcom/android/settings_ex/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$2$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method
