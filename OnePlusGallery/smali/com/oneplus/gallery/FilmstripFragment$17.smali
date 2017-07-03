.class Lcom/oneplus/gallery/FilmstripFragment$17;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1783
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1796
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1786
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->cancelHideToolbar()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$700(Lcom/oneplus/gallery/FilmstripFragment;)V

    goto :goto_0

    .line 1792
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery/FilmstripFragment;->m_IsFilmstripScrolling:Z
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$3800(Lcom/oneplus/gallery/FilmstripFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$17;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->hideToolbarDelay()V
    invoke-static {v0}, Lcom/oneplus/gallery/FilmstripFragment;->access$800(Lcom/oneplus/gallery/FilmstripFragment;)V

    goto :goto_0

    .line 1783
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
