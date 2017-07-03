.class Lcom/oneplus/widget/FilmstripView$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/FilmstripView;->onItemRemoved(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/FilmstripView;

.field private final synthetic val$finalItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$2;->this$0:Lcom/oneplus/widget/FilmstripView;

    iput-object p2, p0, Lcom/oneplus/widget/FilmstripView$2;->val$finalItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$2;->this$0:Lcom/oneplus/widget/FilmstripView;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$2;->val$finalItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemRemovingAnimationCompleted(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    invoke-static {v0, v1}, Lcom/oneplus/widget/FilmstripView;->access$7(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 954
    return-void
.end method
