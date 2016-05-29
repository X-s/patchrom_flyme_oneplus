.class Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OPHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPHomeSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/OPHomeSettings;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/OPHomeSettings;Lcom/oneplus/settings/OPHomeSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/OPHomeSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/OPHomeSettings$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;-><init>(Lcom/oneplus/settings/OPHomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$HomePackageReceiver;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # invokes: Lcom/oneplus/settings/OPHomeSettings;->buildHomeActivitiesList()V
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$000(Lcom/oneplus/settings/OPHomeSettings;)V

    .line 74
    invoke-static {p1}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/OPHomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 76
    return-void
.end method
