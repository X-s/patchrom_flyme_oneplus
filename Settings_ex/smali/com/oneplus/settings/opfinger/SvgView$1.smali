.class Lcom/oneplus/settings/opfinger/SvgView$1;
.super Ljava/lang/Object;
.source "SvgView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/SvgView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/SvgView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/SvgView;II)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$w:I

    iput p3, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    # getter for: Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/SvgView;->access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/SvgView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    # getter for: Lcom/oneplus/settings/opfinger/SvgView;->mSvgResource:I
    invoke-static {v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$000(Lcom/oneplus/settings/opfinger/SvgView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/opfinger/SvgHelper;->load(Landroid/content/Context;I)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    # getter for: Lcom/oneplus/settings/opfinger/SvgView;->mSvgLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/SvgView;->access$200(Lcom/oneplus/settings/opfinger/SvgView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    # getter for: Lcom/oneplus/settings/opfinger/SvgView;->mSvg:Lcom/oneplus/settings/opfinger/SvgHelper;
    invoke-static {v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$100(Lcom/oneplus/settings/opfinger/SvgView;)Lcom/oneplus/settings/opfinger/SvgHelper;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$w:I

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v4}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->val$h:I

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/SvgView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/settings/opfinger/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/oneplus/settings/opfinger/SvgView;->mPaths:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/oneplus/settings/opfinger/SvgView;->access$302(Lcom/oneplus/settings/opfinger/SvgView;Ljava/util/List;)Ljava/util/List;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgView$1;->this$0:Lcom/oneplus/settings/opfinger/SvgView;

    # invokes: Lcom/oneplus/settings/opfinger/SvgView;->updatePathsPhaseLocked()V
    invoke-static {v0}, Lcom/oneplus/settings/opfinger/SvgView;->access$400(Lcom/oneplus/settings/opfinger/SvgView;)V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
