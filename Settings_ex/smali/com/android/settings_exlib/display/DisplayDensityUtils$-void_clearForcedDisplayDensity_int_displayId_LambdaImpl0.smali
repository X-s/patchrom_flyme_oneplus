.class final synthetic Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/display/DisplayDensityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$displayId:I

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;->val$displayId:I

    iput p2, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;->val$userId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;->val$displayId:I

    iget v1, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->-com_android_settingslib_display_DisplayDensityUtils_lambda$1(II)V

    return-void
.end method
