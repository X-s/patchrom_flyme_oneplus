.class Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewRequireScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->requireScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;->this$0:Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;->this$0:Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    invoke-static {v0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->-wrap0(Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;->this$0:Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->notifyScrolledToBottom()V

    .line 47
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper$1;->this$0:Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/RecyclerViewRequireScrollHelper;->notifyRequiresScroll()V

    goto :goto_0
.end method
