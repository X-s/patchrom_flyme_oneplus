.class public Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public loadIcons:Z

.field public loadThumbnails:Z

.field public numVisibleTaskThumbnails:I

.field public numVisibleTasks:I

.field public onlyLoadForCache:Z

.field public onlyLoadPausedActivities:Z

.field public runningTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 50
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 54
    iput v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 55
    iput v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    return-void
.end method
