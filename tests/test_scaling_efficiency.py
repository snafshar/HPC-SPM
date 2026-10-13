import unittest
from src.scaling_efficiency import scaling


class ScalingTests(unittest.TestCase):
    def test_speedup_and_efficiency(self):
        speedup, efficiency = scaling(12.0, 3.0, 4)
        self.assertEqual(speedup, 4.0)
        self.assertEqual(efficiency, 1.0)

    def test_invalid_inputs(self):
        with self.assertRaises(ValueError):
            scaling(0, 3, 4)
        with self.assertRaises(ValueError):
            scaling(10, 3, 0)


if __name__ == "__main__":
    unittest.main()
