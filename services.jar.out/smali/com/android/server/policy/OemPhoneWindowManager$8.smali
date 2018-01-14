.class Lcom/android/server/policy/OemPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field final synthetic val$margin:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "val$margin"    # I

    .prologue
    .line 1830
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/OemPhoneWindowManager$8;->val$margin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1970
    const/4 v3, 0x0

    return v3

    .line 1841
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1842
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    .line 1843
    const-string/jumbo v20, "scaleX"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const v22, 0x3f8ccccd    # 1.1f

    const/16 v23, 0x0

    aput v22, v21, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v6, v21

    .line 1844
    const-string/jumbo v20, "scaleY"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const v22, 0x3f8ccccd    # 1.1f

    const/16 v23, 0x0

    aput v22, v21, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v6, v21

    .line 1842
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v20, 0xe1

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1846
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialX:I

    .line 1849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialY:I

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialTouchX:F

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialTouchY:F

    .line 1852
    const/4 v3, 0x1

    return v3

    .line 1855
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1856
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    .line 1857
    const-string/jumbo v20, "scaleX"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    aput v22, v21, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v6, v21

    .line 1858
    const-string/jumbo v20, "scaleY"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    aput v22, v21, v23

    invoke-static/range {v20 .. v21}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v6, v21

    .line 1856
    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 1859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v20, 0xe1

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialX:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 1863
    .local v14, "diffX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialY:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 1864
    .local v15, "diffY":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sub-long v12, v20, v22

    .line 1867
    .local v12, "diffTime":J
    add-int v3, v14, v15

    const/16 v5, 0xa

    if-ge v3, v5, :cond_4

    const-wide/16 v20, 0xfa

    cmp-long v3, v12, v20

    if-gez v3, :cond_4

    .line 1868
    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QuickPay: show switch dialog mQuickPayWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_4

    .line 1870
    const/4 v11, 0x0

    .line 1871
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v3

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const v6, 0x50c0002

    .line 1872
    const v20, 0x50c0001

    .line 1871
    move/from16 v0, v20

    invoke-virtual {v3, v6, v0, v5}, Landroid/content/res/ThemeController;->getCorrectColorResource(II[I)I

    move-result v19

    .line 1887
    .local v19, "resId":I
    new-instance v11, Landroid/app/AlertDialog$Builder;

    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-direct {v11, v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1888
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x50a003d

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap1(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1891
    .local v9, "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/16 v16, 0x0

    .line 1892
    .local v16, "findWhich":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 1893
    .local v7, "availableAppsList":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 1894
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1895
    .local v10, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget v3, v10, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-ne v3, v5, :cond_2

    .line 1896
    move/from16 v16, v18

    .line 1898
    :cond_2
    iget-object v3, v10, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    aput-object v3, v7, v18

    .line 1893
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1900
    .end local v10    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_3
    move/from16 v8, v16

    .line 1901
    .local v8, "nowWhich":I
    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-direct {v4, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1902
    .local v4, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/server/policy/OemPhoneWindowManager$8$1;

    .line 1903
    const v5, 0x5030006

    .line 1904
    const v6, 0x50d000a

    move-object/from16 v3, p0

    .line 1902
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/OemPhoneWindowManager$8$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$8;Landroid/content/Context;II[Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1921
    .local v2, "adapter":Landroid/widget/ListAdapter;
    new-instance v3, Lcom/android/server/policy/OemPhoneWindowManager$8$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/android/server/policy/OemPhoneWindowManager$8$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$8;Ljava/util/ArrayList;)V

    .line 1920
    invoke-virtual {v11, v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    .line 1929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d8

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string/jumbo v5, "QuickPayChooser"

    invoke-virtual {v3, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$8$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/OemPhoneWindowManager$8$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$8;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1942
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "availableAppsList":[Ljava/lang/String;
    .end local v8    # "nowWhich":I
    .end local v9    # "availableApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "findWhich":I
    .end local v18    # "i":I
    .end local v19    # "resId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mOverscanScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_5

    .line 1943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->val$margin:I

    move/from16 v17, v0

    .line 1944
    .local v17, "goalX":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v20, 0x0

    aput v6, v5, v20

    const/4 v6, 0x1

    aput v17, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    .line 1945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$8$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/policy/OemPhoneWindowManager$8$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager$8;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v20, 0xe1

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move/from16 v0, v17

    iput v0, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    .line 1958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v5, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1960
    const-string/jumbo v5, "quickpay_button_xy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1959
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1961
    const/4 v3, 0x1

    return v3

    .line 1943
    .end local v17    # "goalX":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mOverscanScreenWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->val$margin:I

    sub-int v17, v3, v5

    .restart local v17    # "goalX":I
    goto/16 :goto_1

    .line 1963
    .end local v12    # "diffTime":J
    .end local v14    # "diffX":I
    .end local v15    # "diffY":I
    .end local v17    # "goalX":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialTouchX:F

    move/from16 v20, v0

    sub-float v6, v6, v20

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->initialTouchY:F

    move/from16 v20, v0

    sub-float v6, v6, v20

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap0(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/OemPhoneWindowManager$8;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1968
    :cond_6
    const/4 v3, 0x1

    return v3

    .line 1838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1871
    :array_0
    .array-data 4
        0x50c000a
        0x50c000b
        0x50c000c
        0x50c000d
        0x50c000e
        0x50c000f
        0x50c0010
        0x50c0003
        0x50c0004
        0x50c0005
        0x50c0006
        0x50c0007
        0x50c0008
        0x50c0009
    .end array-data
.end method
