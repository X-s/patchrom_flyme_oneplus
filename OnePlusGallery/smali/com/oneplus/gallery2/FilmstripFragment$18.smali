.class Lcom/oneplus/gallery2/FilmstripFragment$18;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/FilmstripFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1933
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1946
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1936
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->cancelHideToolbar()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$700(Lcom/oneplus/gallery2/FilmstripFragment;)V

    goto :goto_0

    .line 1942
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_IsFilmstripScrolling:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$4900(Lcom/oneplus/gallery2/FilmstripFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$18;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->hideToolbarDelay()V
    invoke-static {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->access$800(Lcom/oneplus/gallery2/FilmstripFragment;)V

    goto :goto_0

    .line 1933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
