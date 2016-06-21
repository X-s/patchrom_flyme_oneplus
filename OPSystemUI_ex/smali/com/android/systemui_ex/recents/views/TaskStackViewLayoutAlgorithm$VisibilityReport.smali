.class public Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityReport"
.end annotation


# instance fields
.field public numVisibleTasks:I

.field public numVisibleThumbnails:I

.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;II)V
    .locals 0
    .param p2, "tasks"    # I
    .param p3, "thumbnails"    # I

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    .line 46
    iput p3, p0, Lcom/android/systemui_ex/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    .line 47
    return-void
.end method
