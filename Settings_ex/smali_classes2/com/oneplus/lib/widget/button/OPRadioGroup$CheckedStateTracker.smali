.class Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "OPRadioGroup.java"

# interfaces
.implements Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/button/OPRadioGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;-><init>(Lcom/oneplus/lib/widget/button/OPRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Lcom/oneplus/lib/widget/button/OPCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-get2(Lcom/oneplus/lib/widget/button/OPRadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-set0(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z

    .line 356
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-get0(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 357
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v2}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-get0(Lcom/oneplus/lib/widget/button/OPRadioGroup;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-wrap1(Lcom/oneplus/lib/widget/button/OPRadioGroup;IZ)V

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-set0(Lcom/oneplus/lib/widget/button/OPRadioGroup;Z)Z

    .line 361
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getId()I

    move-result v0

    .line 362
    .local v0, "id":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPRadioGroup$CheckedStateTracker;->this$0:Lcom/oneplus/lib/widget/button/OPRadioGroup;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/button/OPRadioGroup;->-wrap0(Lcom/oneplus/lib/widget/button/OPRadioGroup;I)V

    .line 349
    return-void
.end method
