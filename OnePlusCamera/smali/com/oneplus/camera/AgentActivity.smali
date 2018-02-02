.class public Lcom/oneplus/camera/AgentActivity;
.super Landroid/app/Activity;
.source "AgentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/AgentActivity$1;
    }
.end annotation


# static fields
.field public static final AGENT_TYPE_START_ACTIVITY:I = 0x0

.field public static final AGENT_TYPE_START_ACTIVITY_FOR_RESULT:I = 0x1

.field public static final EXTRA_AGENT_TYPE:Ljava/lang/String; = "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "com.oneplus.camera.agent.intent.extra.COMPONENT"

.field private static final REQUEST_CODE_AGENT:I = 0x2710

.field private static final STATE_AGENT:Ljava/lang/String; = "stateAgent"

.field private static final STATE_AGENT_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraAgentActivity"


# instance fields
.field private m_AgentType:I

.field private final m_FinishRunnable:Ljava/lang/Runnable;

.field private m_Handler:Landroid/os/Handler;

.field private m_InitialRotation:Lcom/oneplus/base/Rotation;

.field private m_IsAgentDone:Z

.field private m_IsRunning:Z

.field private m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

.field private m_ScreenShotBitmap:Landroid/graphics/Bitmap;

.field private m_ScreenShotImageView:Landroid/widget/ImageView;


# direct methods
.method static synthetic -set0(Lcom/oneplus/camera/AgentActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/AgentActivity;->m_IsRunning:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsRunning:Z

    .line 64
    new-instance v0, Lcom/oneplus/camera/AgentActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AgentActivity$1;-><init>(Lcom/oneplus/camera/AgentActivity;)V

    iput-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_FinishRunnable:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method private doRequestedStartActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v2, 0x96

    .line 85
    iget-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsAgentDone:Z

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsAgentDone:Z

    .line 92
    iget v0, p0, Lcom/oneplus/camera/AgentActivity;->m_AgentType:I

    packed-switch v0, :pswitch_data_0

    .line 122
    const-string/jumbo v0, "CameraAgentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRequestedStartActivity() - Unknown agent type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/AgentActivity;->m_AgentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->finish()V

    .line 124
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/camera/AgentActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/AgentActivity$2;-><init>(Lcom/oneplus/camera/AgentActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :goto_0
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/camera/AgentActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/AgentActivity$3;-><init>(Lcom/oneplus/camera/AgentActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScreenShotOrientation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 346
    .local v2, "wm":Landroid/view/WindowManager;
    if-nez v2, :cond_0

    .line 348
    const-string/jumbo v4, "CameraAgentActivity"

    const-string/jumbo v5, "updateScreenShotOrientation() - WindowManager is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 352
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1

    .line 354
    const-string/jumbo v4, "CameraAgentActivity"

    const-string/jumbo v5, "updateScreenShotOrientation() - display is null"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 359
    return-void

    .line 361
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    .local v1, "screenShotImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 363
    .local v3, "wmRotation":I
    packed-switch v3, :pswitch_data_0

    .line 384
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 385
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 343
    :cond_3
    return-void

    .line 367
    :pswitch_0
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 368
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 372
    :pswitch_1
    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 373
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 377
    :pswitch_2
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 378
    iget-object v4, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 133
    iget v0, p0, Lcom/oneplus/camera/AgentActivity;->m_AgentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/camera/AgentActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "CameraAgentActivity"

    const-string/jumbo v1, "onActivityResult() - Finish activity later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity;->m_FinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->finish()V

    .line 144
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/AgentActivity;->overridePendingTransition(II)V

    .line 131
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsRunning:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 150
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    invoke-direct {p0}, Lcom/oneplus/camera/AgentActivity;->updateScreenShotOrientation()V

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string/jumbo v7, "CameraAgentActivity"

    const-string/jumbo v8, "onCreate() - Start"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const v7, 0x7f03000b

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AgentActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "CameraActivity.InstanceId"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "instanceID":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 176
    const-string/jumbo v7, "stateAgent"

    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    :goto_0
    iput-boolean v5, p0, Lcom/oneplus/camera/AgentActivity;->m_IsAgentDone:Z

    .line 179
    :cond_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 183
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 184
    .local v4, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 185
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    const/high16 v5, 0x80000

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 189
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v6

    or-int/lit16 v6, v6, 0x800

    or-int/lit8 v6, v6, 0x2

    or-int/lit16 v6, v6, 0x200

    or-int/lit16 v6, v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    const v5, 0x7f090036

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/AgentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    .line 197
    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->getScreenShots(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    .line 200
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    .local v2, "screenShotImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getRequestedOrientation()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 225
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 227
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 230
    :cond_2
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->isSystemOrientationEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/AgentActivity;->setRequestedOrientation(I)V

    .line 233
    :cond_3
    const-string/jumbo v5, "CameraAgentActivity"

    const-string/jumbo v6, "onCreate() - End"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .end local v2    # "screenShotImageMatrix":Landroid/graphics/Matrix;
    .end local v3    # "window":Landroid/view/Window;
    .end local v4    # "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v5, v6

    .line 176
    goto :goto_0

    .line 204
    .restart local v2    # "screenShotImageMatrix":Landroid/graphics/Matrix;
    .restart local v3    # "window":Landroid/view/Window;
    .restart local v4    # "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    :sswitch_0
    sget-object v5, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    goto :goto_1

    .line 207
    :sswitch_1
    sget-object v5, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    .line 208
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 209
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 210
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v9, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 213
    :sswitch_2
    sget-object v5, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    .line 214
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 215
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 216
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 219
    :sswitch_3
    sget-object v5, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    iput-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    .line 220
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 221
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/camera/AgentActivity;->m_ScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string/jumbo v2, "CameraAgentActivity"

    const-string/jumbo v3, "onRestoreInstanceState"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    const-string/jumbo v2, "stateAgent"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsAgentDone:Z

    .line 249
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    const-string/jumbo v1, "CameraAgentActivity"

    const-string/jumbo v2, "onResume()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v1, p0, Lcom/oneplus/camera/AgentActivity;->m_IsRunning:Z

    if-nez v1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 268
    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity;->m_InitialRotation:Lcom/oneplus/base/Rotation;

    if-eqz v1, :cond_0

    .line 270
    const-string/jumbo v1, "CameraAgentActivity"

    const-string/jumbo v2, "onResume() - Finish activity later"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/camera/AgentActivity;->m_FinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->finish()V

    .line 275
    const/high16 v1, 0x7f040000

    const v2, 0x7f040001

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/AgentActivity;->overridePendingTransition(II)V

    .line 276
    return-void

    .line 280
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/camera/AgentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v1, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/camera/AgentActivity;->m_AgentType:I

    .line 289
    invoke-direct {p0, v0}, Lcom/oneplus/camera/AgentActivity;->doRequestedStartActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    const-string/jumbo v0, "CameraAgentActivity"

    const-string/jumbo v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsAgentDone:Z

    if-eqz v0, :cond_0

    .line 299
    const-string/jumbo v0, "stateAgent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 309
    const-string/jumbo v0, "CameraAgentActivity"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/oneplus/camera/AgentActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/AgentActivity$4;-><init>(Lcom/oneplus/camera/AgentActivity;)V

    .line 325
    iget-object v1, p0, Lcom/oneplus/camera/AgentActivity;->m_Handler:Landroid/os/Handler;

    .line 310
    invoke-static {v0, v1}, Lcom/oneplus/base/OrientationManager;->setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 326
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 306
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 334
    const-string/jumbo v0, "CameraAgentActivity"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationCallbackHandle:Lcom/oneplus/base/Handle;

    .line 336
    iget-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/AgentActivity;->m_OrientationSensorHandle:Lcom/oneplus/base/Handle;

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/AgentActivity;->m_IsRunning:Z

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 332
    return-void
.end method
