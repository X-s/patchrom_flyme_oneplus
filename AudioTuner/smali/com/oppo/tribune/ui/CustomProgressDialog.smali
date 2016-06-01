.class public Lcom/oppo/tribune/ui/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v1, 0x7f0d0106

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 61
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setContentView(I)V

    .line 62
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v0
.end method

.method public static createDialog(Landroid/content/Context;I)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/ui/CustomProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 69
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setContentView(I)V

    .line 70
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v0
.end method

.method public static createDialogNoBackground(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 117
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v2, 0x7f0b00be

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 119
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_0
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v1
.end method

.method public static createDialogNoBackground(Landroid/content/Context;I)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;I)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 128
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v2, 0x7f0b00be

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 130
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v1
.end method

.method private startAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 154
    new-instance v0, Lcom/oppo/tribune/ui/CustomProgressDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/oppo/tribune/ui/CustomProgressDialog$1;-><init>(Lcom/oppo/tribune/ui/CustomProgressDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 172
    new-instance v0, Lcom/oppo/tribune/ui/CustomProgressDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/oppo/tribune/ui/CustomProgressDialog$2;-><init>(Lcom/oppo/tribune/ui/CustomProgressDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 138
    iget-object v3, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 140
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 144
    :cond_0
    const v3, 0x7f0b00bf

    invoke-virtual {p0, v3}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 145
    .local v2, "imageViewLoading":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 147
    .local v1, "animationLoading":Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, v2, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 149
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public setMessage(I)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 106
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "tvMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 3
    .param p1, "strMessage"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "tvMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    sget-object v1, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v1
.end method

.method public setTitile(Ljava/lang/String;)Lcom/oppo/tribune/ui/CustomProgressDialog;
    .locals 1
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    return-object v0
.end method

.method public show()V
    .locals 5

    .prologue
    .line 42
    iget-object v3, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oppo/tribune/ui/CustomProgressDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v3, Lcom/oppo/tribune/ui/CustomProgressDialog;->mCustomProgressDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v4, 0x7f0b00bf

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/ui/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 51
    .local v2, "imageViewLoading":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    .local v1, "animationLoading":Landroid/graphics/drawable/AnimationDrawable;
    invoke-direct {p0, v2, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->startAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
