.class Lcom/oneplus/gallery/MediaPickerActivity$7;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaPickerActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/oneplus/gallery/MediaPickerActivity$7;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity$7;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/gallery/MediaPickerActivity;->goBack()Z

    .line 576
    return-void
.end method
