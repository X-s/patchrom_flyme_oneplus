.class Lcom/oppo/tribune/ui/ContentListLayout$1;
.super Ljava/lang/Object;
.source "ContentListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/ui/ContentListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/ContentListLayout;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/ContentListLayout;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oppo/tribune/ui/ContentListLayout$1;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$1;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout$1;->this$0:Lcom/oppo/tribune/ui/ContentListLayout;

    iget-object v0, v0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method
