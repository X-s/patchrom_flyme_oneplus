.class Lcom/oneplus/gallery2/MediaPickerActivity$8;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaPickerActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaPickerActivity$8;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity$8;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaPickerActivity;->goBack()Z

    .line 620
    return-void
.end method
