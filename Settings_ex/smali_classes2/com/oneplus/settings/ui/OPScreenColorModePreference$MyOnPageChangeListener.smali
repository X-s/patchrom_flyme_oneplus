.class public Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenColorModePreference.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPScreenColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 142
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const v3, 0x7f02020b

    const v2, 0x7f02020a

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-set0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;I)I

    .line 111
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get1(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get2(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get2(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get1(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get3(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get3(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get2(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->-get0(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
