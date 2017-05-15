.class Lcom/oneplus/settings/ui/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/ColorPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    .local v0, "index":I
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    # getter for: Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    # getter for: Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    # getter for: Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 352
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    # getter for: Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    # invokes: Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$200(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method
