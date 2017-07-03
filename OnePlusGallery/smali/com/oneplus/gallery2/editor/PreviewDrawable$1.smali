.class Lcom/oneplus/gallery2/editor/PreviewDrawable$1;
.super Ljava/lang/Object;
.source "PreviewDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PreviewDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PreviewDrawable;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PreviewDrawable$1;->this$0:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PreviewDrawable$1;->this$0:Lcom/oneplus/gallery2/editor/PreviewDrawable;

    # invokes: Lcom/oneplus/gallery2/editor/PreviewDrawable;->animate()V
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/PreviewDrawable;->access$000(Lcom/oneplus/gallery2/editor/PreviewDrawable;)V

    .line 35
    return-void
.end method
