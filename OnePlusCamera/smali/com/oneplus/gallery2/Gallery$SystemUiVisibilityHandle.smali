.class abstract Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;
.super Lcom/oneplus/base/Handle;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SystemUiVisibilityHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final isVisible:Z

.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/Gallery;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;->this$0:Lcom/oneplus/gallery2/Gallery;

    .line 256
    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 257
    iput-boolean p3, p0, Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;->isVisible:Z

    .line 258
    iput p4, p0, Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;->flags:I

    .line 259
    return-void
.end method


# virtual methods
.method public final drop()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/oneplus/gallery2/Gallery$SystemUiVisibilityHandle;->closeDirectly()V

    .line 265
    return-void
.end method
