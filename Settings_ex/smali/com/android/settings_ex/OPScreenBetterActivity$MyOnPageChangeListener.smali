.class public Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenBetterActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OPScreenBetterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OPScreenBetterActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 244
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 240
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const v3, 0x7f0200b0

    const v2, 0x7f0200af

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # setter for: Lcom/android/settings_ex/OPScreenBetterActivity;->currIndex:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$402(Lcom/android/settings_ex/OPScreenBetterActivity;I)I

    .line 236
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$100(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$200(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$200(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage0:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$100(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$300(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$300(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # getter for: Lcom/android/settings_ex/OPScreenBetterActivity;->mPage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$200(Lcom/android/settings_ex/OPScreenBetterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$MyOnPageChangeListener;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/OPScreenBetterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
