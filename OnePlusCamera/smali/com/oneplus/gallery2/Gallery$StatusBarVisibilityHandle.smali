.class final Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;
.super Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarVisibilityHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/Gallery;ZI)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    const-string/jumbo v0, "StatusBarVisibility"

    .line 285
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;-><init>(Lcom/oneplus/gallery2/Gallery;Ljava/lang/String;ZI)V

    .line 286
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/Gallery;->access$6(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/gallery2/Gallery$StatusBarVisibilityHandle;)V

    .line 293
    return-void
.end method
