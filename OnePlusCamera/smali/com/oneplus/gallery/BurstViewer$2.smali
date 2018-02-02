.class Lcom/oneplus/gallery/BurstViewer$2;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$2;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$2;->this$0:Lcom/oneplus/gallery/BurstViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/BurstViewer;->-set0(Lcom/oneplus/gallery/BurstViewer;Z)Z

    .line 149
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$2;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0}, Lcom/oneplus/gallery/BurstViewer;->-wrap22(Lcom/oneplus/gallery/BurstViewer;)V

    .line 146
    return-void
.end method
