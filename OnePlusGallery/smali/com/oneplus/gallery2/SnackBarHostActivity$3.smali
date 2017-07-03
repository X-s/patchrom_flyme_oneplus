.class Lcom/oneplus/gallery2/SnackBarHostActivity$3;
.super Ljava/lang/Object;
.source "SnackBarHostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/SnackBarHostActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/SnackBarHostActivity;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$3;->this$0:Lcom/oneplus/gallery2/SnackBarHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$3;->this$0:Lcom/oneplus/gallery2/SnackBarHostActivity;

    sget-object v1, Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    # setter for: Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/SnackBarHostActivity;->access$402(Lcom/oneplus/gallery2/SnackBarHostActivity;Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;)Lcom/oneplus/gallery2/SnackBarHostActivity$ViewVisibilityState;

    .line 272
    return-void
.end method
