.class Lcom/android/settings_ex/utils/ServiceListing$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/utils/ServiceListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/utils/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/utils/ServiceListing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/utils/ServiceListing;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/utils/ServiceListing$2;->this$0:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/utils/ServiceListing$2;->this$0:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings_ex/utils/ServiceListing;->reload()Ljava/util/List;

    .line 188
    return-void
.end method
