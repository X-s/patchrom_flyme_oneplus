.class Lcom/oneplus/gallery/widget/FastScrollBar$3;
.super Ljava/lang/Object;
.source "FastScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/widget/FastScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/widget/FastScrollBar;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/widget/FastScrollBar;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/oneplus/gallery/widget/FastScrollBar$3;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oneplus/gallery/widget/FastScrollBar$3;->this$0:Lcom/oneplus/gallery/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery/widget/FastScrollBar;->hideHandle()V
    invoke-static {v0}, Lcom/oneplus/gallery/widget/FastScrollBar;->access$1600(Lcom/oneplus/gallery/widget/FastScrollBar;)V

    .line 383
    return-void
.end method
