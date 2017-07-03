.class Lcom/oneplus/drawable/RepeatTransitionDrawable$2;
.super Ljava/lang/Object;
.source "RepeatTransitionDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/RepeatTransitionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/RepeatTransitionDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/drawable/RepeatTransitionDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable$2;->this$0:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable$2;->this$0:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    iget-object v1, p0, Lcom/oneplus/drawable/RepeatTransitionDrawable$2;->this$0:Lcom/oneplus/drawable/RepeatTransitionDrawable;

    # getter for: Lcom/oneplus/drawable/RepeatTransitionDrawable;->m_Duration:I
    invoke-static {v1}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->access$0(Lcom/oneplus/drawable/RepeatTransitionDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/RepeatTransitionDrawable;->reverseTransition(I)V

    .line 29
    return-void
.end method
