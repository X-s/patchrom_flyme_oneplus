.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualActivityContainer"
.end annotation


# instance fields
.field mDrawn:Z

.field mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V
    .locals 2
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 3981
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3982
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 3979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 3983
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 3984
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 3985
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 3986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityContainer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mIdString:Ljava/lang/String;

    .line 3987
    return-void
.end method

.method private setSurfaceIfReadyLocked()V
    .locals 2

    .prologue
    .line 4067
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4068
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 4069
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 4071
    :cond_0
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;III)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4004
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4036
    :goto_0
    return-void

    .line 4007
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .line 4009
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    if-nez v0, :cond_1

    .line 4010
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .end local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 4012
    .restart local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4013
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4014
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 4017
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 4018
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4021
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    .line 4022
    if-eqz p1, :cond_4

    .line 4023
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4032
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    goto :goto_0

    .line 4025
    :cond_4
    iput v4, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 4026
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 4027
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    .line 4028
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    goto :goto_1
.end method


# virtual methods
.method isAttachedLocked()Z
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    .prologue
    .line 4054
    const/4 v0, 0x0

    return v0
.end method

.method onTaskListEmptyLocked()V
    .locals 2

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4059
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->detachLocked()V

    .line 4060
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 4061
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4062
    return-void
.end method

.method setDrawn()V
    .locals 2

    .prologue
    .line 4045
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4046
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 4047
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    .line 4048
    monitor-exit v1

    .line 4049
    return-void

    .line 4048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 3991
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 3993
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3994
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3996
    .local v0, "origId":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceLocked(Landroid/view/Surface;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3998
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4000
    monitor-exit v3

    .line 4001
    return-void

    .line 3998
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4000
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
