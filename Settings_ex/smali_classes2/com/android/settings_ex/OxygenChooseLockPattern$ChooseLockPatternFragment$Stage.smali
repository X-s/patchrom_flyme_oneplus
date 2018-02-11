.class public final enum Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "OxygenChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 308
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "Introduction"

    .line 310
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 308
    const/4 v2, 0x0

    .line 309
    const v3, 0x7f0e09cd

    .line 311
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 308
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 312
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "HelpScreen"

    .line 314
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 312
    const/4 v2, 0x1

    .line 313
    const v3, 0x7f0e09e2

    .line 314
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 312
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 315
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceTooShort"

    .line 317
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 315
    const/4 v2, 0x2

    .line 316
    const v3, 0x7f0e09d0

    .line 318
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 315
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 319
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "FirstChoiceValid"

    .line 321
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 319
    const/4 v2, 0x3

    .line 320
    const v3, 0x7f0e09d1

    .line 321
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 319
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 322
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "NeedToConfirm"

    .line 324
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 322
    const/4 v2, 0x4

    .line 323
    const v3, 0x7f0e09d2

    .line 325
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 322
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 326
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ConfirmWrong"

    .line 328
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 326
    const/4 v2, 0x5

    .line 327
    const v3, 0x7f0e09c9

    .line 329
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 326
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 330
    new-instance v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string/jumbo v1, "ChoiceConfirmed"

    .line 332
    sget-object v4, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 330
    const/4 v2, 0x6

    .line 331
    const v3, 0x7f0e09d3

    .line 332
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 330
    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 306
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "headerMessage"    # I
    .param p4, "leftMode"    # Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .param p5, "rightMode"    # Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .param p6, "footerMessage"    # I
    .param p7, "patternEnabled"    # Z

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 346
    iput p3, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 347
    iput-object p4, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 348
    iput-object p5, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 349
    iput p6, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 350
    iput-boolean p7, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 345
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    const-class v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
