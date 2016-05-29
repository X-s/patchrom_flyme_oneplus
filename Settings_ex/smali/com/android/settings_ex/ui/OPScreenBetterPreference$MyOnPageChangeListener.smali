.class public Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenBetterPreference.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/OPScreenBetterPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

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
    const v3, 0x7f0200b0

    const v2, 0x7f0200af

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # setter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->currIndex:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$402(Lcom/android/settings_ex/ui/OPScreenBetterPreference;I)I

    .line 138
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage0:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$100(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$200(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$200(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage0:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$100(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$300(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$300(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$200(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    # getter for: Lcom/android/settings_ex/ui/OPScreenBetterPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/ui/OPScreenBetterPreference;->access$000(Lcom/android/settings_ex/ui/OPScreenBetterPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
