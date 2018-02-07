.class Lcom/android/settings_ex/deviceinfo/SimStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/SimStatus;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get1(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get4(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost$OnTabChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 196
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get1(Lcom/android/settings_ex/deviceinfo/SimStatus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 199
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 198
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 200
    .local v2, "simState":I
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-get3(Lcom/android/settings_ex/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/SimStatus;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/oneplus/settings/utils/OPSNSUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings_ex/deviceinfo/SimStatus;->-wrap0(Lcom/android/settings_ex/deviceinfo/SimStatus;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    .end local v2    # "simState":I
    :cond_0
    return-void
.end method
