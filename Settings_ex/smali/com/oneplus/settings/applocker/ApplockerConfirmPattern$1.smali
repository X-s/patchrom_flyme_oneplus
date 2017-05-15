.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$1;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->init(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$1;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowTranslationScale(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "numRows"    # I

    .prologue
    .line 142
    sub-int v0, p2, p1

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method
