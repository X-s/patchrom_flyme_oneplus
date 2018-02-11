.class Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "OPGameAndReadPickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field appIconIv:Landroid/widget/ImageView;

.field appNameTv:Landroid/widget/TextView;

.field bottomLine:Landroid/view/View;

.field checkBox:Landroid/widget/CheckBox;

.field groupDivider:Landroid/view/View;

.field parent:Landroid/widget/RelativeLayout;

.field summaryTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter$ItemViewHolder;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
