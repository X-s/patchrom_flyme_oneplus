.class Lcom/android/systemui_ex/volume/SegmentedButtons$2;
.super Ljava/lang/Object;
.source "SegmentedButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/SegmentedButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/SegmentedButtons;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/SegmentedButtons;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui_ex/volume/SegmentedButtons$2;->this$0:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui_ex/volume/SegmentedButtons$2;->this$0:Lcom/android/systemui_ex/volume/SegmentedButtons;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
