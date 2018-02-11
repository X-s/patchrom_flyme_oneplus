.class public final enum Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockComplexPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x7f0e069a

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    const-string/jumbo v1, "Introduction"

    .line 236
    const v3, 0x7f0e0427

    .line 237
    const v4, 0x7f0e0429

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    .line 236
    sput-object v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 240
    new-instance v6, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    const-string/jumbo v7, "NeedToConfirm"

    const v9, 0x7f0e042a

    .line 241
    const v10, 0x7f0e042c

    .line 242
    const v11, 0x7f0e06a5

    .line 240
    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 244
    new-instance v9, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    const-string/jumbo v10, "ConfirmWrong"

    const v12, 0x7f0e042d

    .line 245
    const v13, 0x7f0e042e

    move v11, v15

    move v14, v5

    .line 244
    invoke-direct/range {v9 .. v14}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 233
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "hintInAlpha"    # I
    .param p4, "hintInNumeric"    # I
    .param p5, "nextButtonText"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->alphaHint:I

    .line 250
    iput p4, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->numericHint:I

    .line 251
    iput p5, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->buttonText:I

    .line 248
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->$VALUES:[Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    return-object v0
.end method
