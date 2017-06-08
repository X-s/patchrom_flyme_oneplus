.class Lcom/android/settings_ex/applications/ManageDefaultApps$1;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$1;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$1;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # invokes: Lcom/android/settings_ex/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$000(Lcom/android/settings_ex/applications/ManageDefaultApps;)V

    .line 68
    return-void
.end method
