.class Lcom/android/settings_ex/applications/ManageApplications$6;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1783
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$2002(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$2000(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->setContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    .line 1785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1788
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$6;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$2002(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1793
    return-void
.end method
