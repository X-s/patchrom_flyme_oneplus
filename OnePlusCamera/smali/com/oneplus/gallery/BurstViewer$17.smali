.class Lcom/oneplus/gallery/BurstViewer$17;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->open(Lcom/oneplus/gallery2/media/GroupedMedia;I)Z
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
    .line 1459
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$17;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$17;->this$0:Lcom/oneplus/gallery/BurstViewer;

    sget-object v1, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/BurstViewer;->-wrap1(Lcom/oneplus/gallery/BurstViewer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1462
    return-void
.end method
